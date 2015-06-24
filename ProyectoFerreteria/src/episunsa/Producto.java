package episunsa;

import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;


import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Producto{
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key idProducto;
	
	
	@Persistent
	private String nombre;
	@Persistent
	private String marca;
	@Persistent
	private String modelo;
	@Persistent
	private String especificaciones;
	@Persistent
	private String garantia ;
	@Persistent
	private String stock;
	@Persistent
	private String preciocompra;
	@Persistent
	private String precioventa;
	@Persistent
	private String ganancia;
	@Persistent
	private String precioxmayor;
	
	
	
	public Producto(String nombre,String marca,String modelo,String especificaciones,String garantia,String stock,String preciocompra,String precioventa,String ganancia,String precioxmayor) {
		
		this.nombre= nombre;
		this.marca= marca;
		this.modelo=modelo;
		this.especificaciones=especificaciones;
		this.garantia=garantia;
		this.stock=stock;
		this.preciocompra=preciocompra;
		this.precioventa=precioventa;
		this.ganancia=ganancia;
		this.precioxmayor=precioxmayor;
		
		
	}
	
	public String getIdProducto() {
		return KeyFactory.keyToString(idProducto);
	}

	public void setIdColor(String idProducto) {
		Key keyProducto = KeyFactory.stringToKey(idProducto);
		this.idProducto = KeyFactory.createKey(keyProducto,
		Producto.class.getSimpleName(), java.util.UUID.randomUUID().toString());
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getMarca() {
		return this.marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}
	public String getModelo() {
		return this.modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getEspecificaciones() {
		return this.especificaciones;
	}

	public void setEspecificaciones(String especificaciones) {
		this.especificaciones = especificaciones;
	}
	public String getGarantia() {
		return this.garantia;
	}

	public void setGarantia(String garantia) {
		this.garantia= garantia;
	}
	public String getStock() {
		return this.stock;
	}

	public void setStock(String stock) {
		this.stock = stock;
	}
	public String getPrecioCompra() {
		return this.preciocompra;
	}

	public void setPrecioCompra(String preciocompra) {
		this.preciocompra= preciocompra;
	}
	public String getPrecioVenta() {
		return this.precioventa;
	}

	public void setPrecioVenta(String precioventa) {
		this.precioventa = precioventa;
	}
	public String getGanancia() {
		return this.ganancia;
	}

	public void setGanancia(String ganancia) {
		this.ganancia = ganancia;
	}
	public String getPrecioxMayor() {
		return this.precioxmayor;
	}

	public void setPrecioxMayor(String precioxmayor) {
		this.precioxmayor= precioxmayor;
	}
	
}