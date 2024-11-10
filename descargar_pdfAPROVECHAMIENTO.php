<?php
require 'vendor/autoload.php';

use Dompdf\Dompdf;

// Crear una instancia de Dompdf
$dompdf = new Dompdf();

// Obtener los datos del formulario
$nombre = $_POST['nombre'];
$semestre = $_POST['semestre'];
$programa = $_POST['programa'];
$matricula = $_POST['matricula'];
$semestre_beca = $_POST['semestre_beca'];
$anio = $_POST['anio'];
$nombre_firma = $_POST['nombre_firma'];
$telefono = $_POST['telefono'];
$correo = $_POST['correo'];

// Crear el contenido HTML con los datos insertados
$html = "
<p style='text-align: right;'>El Saucillo, Huichapan; Hidalgo a ____ de ____________ de ______</p>

<h3>Asunto: Solicitud de Beca de Aprovechamiento</h3>

<p>COMITÉ DE BECAS<br>
DEL INSTITUTO TECNOLÓGICO SUPERIOR DE HUICHAPAN<br>
<strong>P R E S E N T E</strong></p>

<p>Con el gusto de saludarle, el que subscribe <strong>$nombre</strong> estudiante del <strong>$semestre</strong> semestre del Programa Educativo de Ingeniería en <strong>$programa</strong> con número de matrícula <strong>$matricula</strong>, me dirijo de la manera más atenta y respetuosa, para postularme al proceso de la Beca de Aprovechamiento del semestre <strong>$semestre_beca</strong> del año <strong>$anio</strong>.</p>

<p>Es importante mencionar que en el semestre inmediato anterior acredité todas mis asignaturas en primera oportunidad y obtuve un promedio general igual o mayor a 92.</p>

<p>Sin más por el momento agradezco de antemano la atención prestada; quedando en espera de una respuesta favorable.</p>

<p style='text-align: center;'><strong>A T E N T A M E N T E</strong></p>

<p style='text-align: center;'>_________________________</p>
<p style='text-align: center;'>$nombre_firma</p>

<p><strong>Teléfono:</strong> $telefono</p>
<p><strong>Correo electrónico:</strong> $correo</p>
";

// Cargar el HTML en DOMPDF
$dompdf->loadHtml($html);

// (Opcional) Configurar el tamaño de papel y la orientación
$dompdf->setPaper('A4', 'portrait');

// Renderizar el HTML como PDF
$dompdf->render();

// Enviar el PDF al navegador para su descarga
$dompdf->stream("Solicitud_de_Beca.pdf", ["Attachment" => true]);
?>