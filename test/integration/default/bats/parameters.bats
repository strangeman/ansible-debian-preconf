#!/usr/bin/env bats
#

#
# Check all files created properly
#

@test "Proxy file was created" {
	run test -e /etc/apt/apt.conf.d/01proxy
	[ "$status" -eq 0 ]
}

@test "Check properly history file size" {
	run sudo -i bash -c "echo \${HISTFILESIZE}"
	[ "$output" -eq 9999 ]
}

@test "Check properly history time format" {
	run sudo -i bash -c "echo \${HISTTIMEFORMAT}"
	[[ "$output" = "%F %T" ]]
}

@test "Check properly configured custom prompt" {
	run sudo -i bash -cl "echo \${PS1}"
	[[ "$output" = '\u@`hostname -f | cut -d"." -f1,2`:\w\$' ]]
}

@test "Authorised keys was created for root" {
	run test -e /root/.ssh/authorized_keys
	[ "$status" -eq 0 ]
}

@test "Timezone was set" {
	run date +%Z
	[[ "$output" = "VLAT" ]]
}

@test "Ntpdate was putted to crontab" {
	run bash -c "sudo crontab -l | grep -q ntpdate-debian"
	[ "$status" -eq 0 ]
}

@test "Locale was set properly" {
	run bash -c "locale -a | grep -q RU"
	[ "$status" -eq 0 ]
}
