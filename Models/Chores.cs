namespace chores_api.Models;

public class Chore
{
    public int Id { get; set; }
    public string ChoreName { get; set; }
    public string Description { get; set; }
    public string Assigned { get; set; }
    public int Priority { get; set; }
    public int DueDate { get; set; }
    public int TimeEstimated { get; set; }
    public bool IsComplete { get; set; }
}


//  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
//   chore_name VARCHAR(255) NOT NULL,
//   description VARCHAR(255),
//   assigned VARCHAR(255),
//   priority INTEGER,
//   due_date DATE,
//   time_estimated INTEGER,
//   isComplete BOOLEAN DEFAULT false