using backend.Data;

namespace backend.Repositories
{
    public class AccountRepository : IAccountRepository
    {
        private readonly DBSHop _context;

        public AccountRepository(DBSHop context)
        {
            _context = context;
        }
    }
}
