#!/usr/bin/env bats
#

#
# Check all packages installed (or removed) properly
#

@test "Check vim installed" {
    run command -v vim
    [ "$status" -eq 0 ]
}

@test "Check aptitude installed" {
    run command -v aptitude
    [ "$status" -eq 0 ]
}

@test "Check screen installed" {
    run command -v screen
    [ "$status" -eq 0 ]
}

@test "Check ntpdate installed" {
    run command -v ntpdate
    [ "$status" -eq 0 ]
}

@test "Check screen installed" {
    run command -v screen
    [ "$status" -eq 0 ]
}

@test "Check puppet removed" {
    run command -v puppet
    [ "$status" -ne 0 ]
}

@test "Check network-manager removed" {
    run command -v nmcli
    [ "$status" -ne 0 ]
}