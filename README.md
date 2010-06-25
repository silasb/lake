# Lake

Lake is a build system that is very similar to `rake` for `ruby`.  My goal was not to create something new and revolutionary but something simple that I can use for small projects.

## Lakefile

A `Lakefile` is a file that describes your project and how to build components of your project.

Currently the syntax is similar to `rake` since you create `tasks` then define `commands` for those tasks.

    -- My first Lakefile

    task({default = 'build'}, 'gcc hello.c -c -o hello.o')

What this does is assign a `task` to build a `.c` file.

As I build up `lake` a little farther I will keep adding examples.
