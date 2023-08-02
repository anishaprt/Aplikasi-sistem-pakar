<!DOCTYPE html>
<html>
<head>
    <title>Kartu Nama</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 0;
        }
        table{
            width: 100%
        }
        td{
            line-height: 25px;
        }
    </style>
</head>
<body>
    <table style="border:1px solid #5e72e4;" cellspacing="0">
        <tr>
            <td style="padding: 20px;background: #5e72e4;color: white;font-weight: bold;" align="center" colspan="2">SISTEM PAKAR KONSULTASI PENYAKIT GINJAL </td>
        </tr>
        <tr>
            <td width="16%" style="padding-top:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ID</td>
            <td style="padding-top:20px">: <span style="margin-left:20px">{{ $data->id_pasien }}</span></td>
        </tr>
        <tr>
            <td width="16%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nama</td>
            <td >: <span style="margin-left:20px">{{ $data->namalengkap }}</span></td>
        </tr>
        <tr>
            <td width="16%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Umur</td>
            <td >: <span style="margin-left:20px">{{ $data->umur }}</span></td>
        </tr>
        <tr>
            <td width="16%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nama</td>
            <td >: <span style="margin-left:20px">{{ $data->jeniskelamin }}</span></td>
        </tr>
        <tr>
            <td width="16%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Alamat</td>
            <td >: <span style="margin-left:20px">{{ $data->alamat }}</span></td>
        </tr>
        <tr>
            <td width="16%"><br></td>
            <td><br></td>
        </tr>
        <tr>
            <td style="padding: 10px;background: #5e72e4;color: white;font-size: 13px;" align="center" colspan="2">* ID yang terdapat pada kartu ini digunakan untuk login aplikasi.</td>
        </tr>
    </table>
</body>
</html>
