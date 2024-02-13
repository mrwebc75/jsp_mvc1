package except;

public class NotExistUserException extends RuntimeException {

  private static final long serialVersionUID = 1L;

  @Override
  public String getMessage() {
    return "예외처리 - 존재하지 않는 사용자 입니다.";
  }

}
