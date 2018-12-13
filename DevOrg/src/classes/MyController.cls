public class MyController {
private Account account;
public MyController() {
account = [SELECT Id, Name, Site FROM Account
WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
}
public Account getAccount() {
return account;
}
public PageReference save() {
update account;
return null;
}
}