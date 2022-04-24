package servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SampleServlet extends HttpServlet {
	//フォワードを行うためのオブジェクト
	RequestDispatcher dispatcher;
	//セッション情報登録を行うためのオブジェクト
	HttpSession session;

	//get送信時に行う処理
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			//実行タイミングの確認用のコンソールへの出力
			System.out.println("サーブレットの実行 get");

			//フォワード先の指定（インプットページのjspへ）
			dispatcher = request.getRequestDispatcher("/input.jsp");
			//フォワードの実行
			dispatcher.forward(request, response);

			//実行タイミングの確認用のコンソールへの出力
			System.out.println("サーブレットの終了 get");
		} catch (Exception e) {
			//何らかの例外があった場合スタックトレースを出力
			e.printStackTrace();
		}
	}
	//post送信時に行う処理
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			//実行タイミングの確認用のコンソールへの出力
			System.out.println("サーブレットの実行 post");

			//文字コードを設定（文字化け防止）
			request.setCharacterEncoding("UTF-8");

			//post送信にてリクエストパラメータ名inputFormで送られている値を、文字列として取得
			String inputForm = request.getParameter("inputForm");

			//取得したリクエストパラメータを確認用にコンソールに出力
			System.out.println(inputForm);

			//セッション情報登録を行うためのオブジェクトの生成
			session = request.getSession();
			//セッション情報の登録を行う  登録する際のパラメータ名は"inputForm"、値は取得した文字列
			session.setAttribute("inputForm", inputForm);

			//フォワード先の指定（アウトプットページのjspへ）
			dispatcher = request.getRequestDispatcher("/output.jsp");
			//フォワードの実行
			dispatcher.forward(request, response);

			//実行タイミングの確認用のコンソールへの出力
			System.out.println("サーブレットの終了 post");
		} catch (Exception e) {
			//何らかの例外があった場合スタックトレースを出力
			e.printStackTrace();
		}
	}
}