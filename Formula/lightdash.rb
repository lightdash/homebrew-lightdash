class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2383.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2383.0/lightdash-cli-0.2383.0-macos-arm64.tar.gz"
      sha256 "9b14554c78b2d3cd7aa3fa5fe480bead0ad477456098bd2665aadd3c412a3241"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2383.0/lightdash-cli-0.2383.0-macos-x64.tar.gz"
      sha256 "8b11d898eb12d18182e44f6e96d9b0dff17095a8d59e09a09de589b58740ca0d"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
