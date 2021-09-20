package cdw_project.entity;

public class Users {
	private int id;

	private String id_google;

	private String name;

	private String play_name;

	private String email;

	private String password;

	private String permission;
	private int active;

	public Users() {

	}

	public Users(String id_google, String name, String play_name, String email, String password, String permission) {
		super();
		this.id_google = id_google;
		this.name = name;
		this.play_name = play_name;
		this.email = email;
		this.password = password;
		this.permission = permission;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getId_google() {
		return id_google;
	}

	public void setId_google(String id_google) {
		this.id_google = id_google;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPlay_name() {
		return play_name;
	}

	public void setPlay_name(String play_name) {
		this.play_name = play_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPermission() {
		return permission;
	}

	public void setPermission(String permission) {
		this.permission = permission;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

}
