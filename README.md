# Mac OSX Timelapse Script

This script will generate screenshots and webcam images on a 1 minute interval. These could then be processed with a toole to generate a timelapse video.

## Dependencies

1. imagesnap

    ```
    brew install imagesnap
    ```
    Or
    Install manually as described in documentation for [imagesnap](https://github.com/rharder/imagesnap)

2. ffmpeg

    ```
    brew install ffmpeg
    ```
        
## Usage

1. Change into the directory containing the repo

    ```
    cd macosx-timelapse-capture
    ```

2. Run `timelapse.sh`

    ```
    ./timelapse.sh
    ```

    or
    
    ```
    ./timelapse.sh /path/to/root/output/directory
    ```

## Output

The output files will be under `./capture/screen` and `./capture/webcam`. They will be named with date stamps like `screenshot-ymdHMS.png` and `webcam-ymdHMS.jpg`

