/**
 * The custom logic attached to the ChangeRequests entity to validate the status update based on certain conditions before creating or updating a ChangeRequest.
 * @Before(event = { "CREATE","UPDATE" }, entity = "hackathonSrv.ChangeRequests")
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
 */
module.exports = async function(request) {
  const { ChangeRequests } = cds.entities;

  const { technicalObjectNumber, desiredDateOfCompletion } = request.data;

  // Ensure technicalObjectNumber is provided
  if (!technicalObjectNumber) {
    request.reject(400, 'Technical Object Number is mandatory.');
  }

  // Validate desiredDateOfCompletion if provided
  if (desiredDateOfCompletion) {
    const currentDate = new Date();
    const completionDate = new Date(desiredDateOfCompletion);

    if (completionDate < currentDate) {
      request.reject(400, 'Desired Date of Completion cannot be in the past.');
    }
  }

  // Check for unique technicalObjectNumber
  const existingRequest = await SELECT.one.from(ChangeRequests).where({ technicalObjectNumber });

  if (existingRequest && existingRequest.ID !== request.data.ID) {
    request.reject(400, 'Technical Object Number must be unique.');
  }
};
