namespace backend.Services
{
    public class AccountService : IAccountService
    {
        private readonly IAccountService _accountService;

        public AccountService(IAccountService accountService)
        {
            _accountService = accountService;
        }
    }
}
