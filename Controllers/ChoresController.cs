
using chores_score.Models;

namespace chore_score.Controllers;

[ApiController]
[Route("api/chores")]

public class ChoresController : ControllerBase
{
    [HttpGet("test")]
    public string Test()
    {
        return "Chores Controller is working!";
    }


    [HttpGet]
    public ActionResult<List<Chore>> GetAllChores()
    {
        try
        {
            List<Chore> chores = [];
            return Ok(chores);
        }
        catch (Exception error)
        {
            return BadRequest(error.Message);
        }
    }
}