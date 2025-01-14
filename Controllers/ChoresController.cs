
using chores_score.Models;
using chores_score.Services;

namespace chore_score.Controllers;

[ApiController]
[Route("api/chores")]

public class ChoresController : ControllerBase
{
    public ChoresController(ChoresService choresService)
    {
        _choresService = choresService;
    }

    private readonly ChoresService _choresService;

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
            List<Chore> chores = _choresService.GetAllChores();
            return Ok(chores);
        }
        catch (Exception error)
        {
            return BadRequest(error.Message);
        }
    }
}