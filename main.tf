# 🀄️🀄️🀄️🀄️🀄️··🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️··🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️🀄️··🀄️🀄️🀄️🀄️🀄️
#κλ KB To Copy Files as sys7 with SSH Private Key

resource "null_resource" "test_kb0" {
    provisioner "file" {
        source      = "kb0/"
        destination = "/usr/local/sys/src/h3terra/t1file/"

        connection {
            type = "ssh"
            host = "kb0"
            user = "sys7"
            private_key = file("/Users/sys7/.ssh/id_ed25519")
            agent = false
            timeout = "2m"
        }
    }
}

resource "null_resource" "test_kb1" {
    provisioner "file" {
        source      = "kb1/"
        destination = "/usr/local/sys/src/h3terra/t1file/"

        connection {
            type = "ssh"
            host = "kb1"
            user = "sys7"
            private_key = file("/Users/sys7/.ssh/id_ed25519")
            agent = false
            timeout = "2m"
        }
    }
}

resource "null_resource" "test_kb3" {
    provisioner "file" {
        source      = "kb3/"
        destination = "/usr/local/sys/src/h3terra/t1file/"

        connection {
            type = "ssh"
            host = "kb3"
            user = "sys7"
            private_key = file("/Users/sys7/.ssh/id_ed25519")
            agent = false
            timeout = "2m"
        }
    }
}

resource "null_resource" "test_kb5" {
    provisioner "file" {
        source      = "kb5/"
        destination = "/usr/local/sys/src/h3terra/t1file/"

        connection {
            type = "ssh"
            host = "kb5"
            user = "sys7"
            private_key = file("/Users/sys7/.ssh/id_ed25519")
            agent = false
            timeout = "2m"
        }
    }
}



