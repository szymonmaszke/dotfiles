import utils.docker
import utils.general


def main():
    menu = utils.general.Menu(location="3", yoffset="69", xoffset="-64", width="23")

    initial_options = [" images", " containers", " volumes"]
    initial_actions = [
        utils.docker.images,
        utils.docker.containers,
        utils.docker.volumes,
    ]
    initial_state = {key: value for key, value in zip(initial_options, initial_actions)}

    choice, options = menu.start(initial_state, prompt="options")

    next_actions = [
        utils.docker.image_choice,
        utils.docker.container_choice,
        utils.docker.volume_choice,
    ]

    middle_state = {key: value for key, value in zip(initial_options, next_actions)}
    middle_function = middle_state[choice]

    menu.middle(options, middle_function, prompt="images")


if __name__ == "__main__":
    main()
