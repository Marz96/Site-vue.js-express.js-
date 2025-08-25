const mysql = require('mysql');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '', // ��� ������, ���� ����������
    database: 'house',
    connectionLimit: 10
});

// �������� ����������� ��� �������
pool.getConnection((err, connection) => {
    if (err) {
        console.error('������ �����������:');
        console.error('��� ������:', err.code);
        console.error('���������:', err.message);
        return;
    }

    console.log(`�������� �����������. ID ����������: ${connection.threadId}`);
    connection.release(); // ���������� ���������� � ���
});

// ���������� ������ ����
pool.on('error', (err) => {
    console.error('������ � ���� ����������:', err);
});

module.exports = pool;