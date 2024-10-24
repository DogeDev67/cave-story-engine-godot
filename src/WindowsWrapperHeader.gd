class_name WindowsWrapperHeader extends Node

func rgb(r: int, g: int, b: int) -> int:
    return (r | (g << 8) | (b << 16))

