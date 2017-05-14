# Social Network and Chat project example (Erlang)
This is a skeleton of a backend for a social network and chat for
mobile applications.  
It's purposed for:
- to show Erlang developers, that storing code modules in separate
sub-directories is a good;
- show no-Erlang developers, that Erlang can be used in writing
complex applications;
- to show [Erlang code structural
patterns](https://justtech.blog/2017/05/14/erlang-structural-patterns/)
in action;

It is a simplified skeleton of a real-world chat and social network application. Many export functions and modules,
which can tell something about its business logic were removed.

## Code organization
__/include__ for all headers, which are used in many modules. Although some Erlang programmers like to keep their
 headers files in `src` it is not recommended. In big projects `src` is used for sources and `include` is used for 
 headers. Don't mess them out.  
__/src__ is used for source code. Here all modules are stored in subdirectories (like packages in Java/Python). Although
 some Erlang programmers throw their source code modules to `src`, like a trash - it is not recommended. Divide and rule.  
__/test__ is used for test code. Here `test/unit` contains unit tests, `test/functional` are functional tests based on 
common test framework, and `test/full` is full integration tests with emulation sending packages to handlers. Although 
some Erlang programmers mess out test code and production code - it is not recommended: `test` is for tests, `src` is 
for production code.

## Patterns
__Application__ is covered in `src/main/sn_test_app.erl`. It is small and simple.  
__Otp Process__ (gen_server) is covered in `src/daemons/sn_conf_holder`. Although it is only a template, created by Idea,
 without any real code.  
__Supervisor__ (static) is covered in `src/main/sn_top_sup` and `src/sn_daemons_sup`.  
__Interface__ is covered in `src/business/auth/`. There `sn_auth_intf` is and interface module with implementations in
 the same packages. Interface implementations nearly always should be in the same package or subpackages. The only 
 exception is to expose an interface for outside usage in a library (like `gen_server` or `cowboy_websocket` behaviors).  
__Manager__ can be frequently meet all other the project. You can check `src/business/friends/sn_friends_mngr` as an 
example.  
__Logic__ is also frequently used nearly everywhere. As an example of masking logic pattern you can see 
`src/business/friends/invite/sn_contacts_logics.erl`. It contains an implementation of functions re-exported by a 
manager. These are the majority of logic modules in this project. Another logic pattern is shared code - it can be seen 
in `src/business/auth/sn_auth_logic.erl`. It shares common functions, which are called from interface implementations.