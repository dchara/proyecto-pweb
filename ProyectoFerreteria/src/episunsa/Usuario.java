package episunsa;

import javax.jdo.*;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;



@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Usuario {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key idUsuario;
	
	@Persistent
	private String nombres;
	
	@Persistent
	private String apellidos;
	
	@Persistent
	private String dni;
	
	@Persistent
	private String gmail;
	

	@Persistent
	private String direccion;

	@Persistent 
	private String telefono;

	@Persistent
	private String ventas;
	
	public Usuario(String nombres,String apellidos,String dni,String gmail,String direccion, String telefono, String ventas ) {
		super();
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.dni = dni;
		this.gmail = gmail;
		this.direccion=direccion;
		this.telefono=telefono;
		this.ventas=ventas;
	}
	public String getIdUsuario() {
		return KeyFactory.keyToString(idUsuario);
	}
	public void setIdColor(String idUsuario) {
		Key keyUsuario = KeyFactory.stringToKey(idUsuario);
		this.idUsuario = KeyFactory.createKey(keyUsuario,
		Usuario.class.getSimpleName(), java.util.UUID.randomUUID().toString());
	}
	
	public String getNombres() {
		return this.nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	
	public String getApellidos() {
		return this.apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	
	public String getDni() {
		return this.dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	
	public String getGmail() {
		return this.gmail;
	}
	public void setGmail(String gmail) {
		this.gmail = gmail;
	}
	
	public String getDireccion() {
		return this.direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion=direccion;
	}
	
	public String getTelefono() {
		return this.telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono=telefono;
	}
	
	public String getVentas() {
		return this.ventas;
	}
	public void setVentas(String ventas) {
		this.ventas = ventas;
	}
	
}
