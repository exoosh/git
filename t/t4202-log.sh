GIT_TEST_DEFAULT_INITIAL_BRANCH_NAME=main
export GIT_TEST_DEFAULT_INITIAL_BRANCH_NAME

	git checkout main &&
	git log --raw --graph --oneline -m main | head -n 500 >actual &&
	git diff-tree --graph main^ | head -n 500 >actual &&
*   commit main
* | commit main~1
* | commit main~2
* | commit main~3
* | commit main~4
	git merge main~3 &&
	git checkout main &&
	git checkout main &&
	git checkout main &&
	git checkout main &&
| * \   Merge branch 'main' (early part) into tangle
	Merge-tag-reach (HEAD -> main)
	Merge-tag-reach (HEAD -> main)
	Merge-tag-reach (HEAD -> main)
	Merge-tag-reach (main)
	Merge-tag-reach (main)
	Merge-tag-reach (HEAD -> main)
| | | |     Merge branch 'main' (early part) into tangle
*** | | | |     Merge branch 'main' (early part) into tangle
	test_when_finished "git reset --hard && git checkout main" &&
	git checkout -b signed main &&
	test_when_finished "git reset --hard && git checkout main" &&
	git checkout -b signed-subkey main &&
	test_when_finished "git reset --hard && git checkout main" &&
	git checkout -b signed-x509 main &&
	test_when_finished "git reset --hard && git checkout main" &&
	git checkout -b plain main &&
	git checkout -b tagged main &&
	test_when_finished "git reset --hard && git checkout main" &&
	git checkout -b plain-shallow main &&
	git checkout --detach main &&
	test_when_finished "git reset --hard && git checkout main" &&
	git checkout -b plain-nokey main &&
	git checkout -b tagged-nokey main &&
	test_when_finished "git reset --hard && git checkout main" &&
	git checkout -b plain-bad main &&
	git checkout -b tagged-bad main &&
	test_when_finished "git reset --hard && git checkout main" &&
	git checkout -b plain-fail main &&
	git checkout -b tagged-fail main &&
	test_when_finished "git reset --hard && git checkout main" &&
	git checkout -b plain-x509 main &&
	git checkout -b tagged-x509 main &&
	test_when_finished "git reset --hard && git checkout main" &&
	git checkout -b plain-x509-nokey main &&
	git checkout -b tagged-x509-nokey main &&
	test_when_finished "git reset --hard && git checkout main" &&
	git checkout -b plain-x509-bad main &&
	git checkout -b tagged-x509-bad main &&
	echo 1234abcd >empty/.git/refs/heads/main &&