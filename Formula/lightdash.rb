class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3248.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3248.0/lightdash-cli-0.3248.0-macos-arm64.tar.gz"
      sha256 "3a0bba6bab2fbf67317c84b5d7c00258f806dcaf9c3ba116d8e235937558dc8b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3248.0/lightdash-cli-0.3248.0-macos-x64.tar.gz"
      sha256 "86b0f4748988c9863587dbbf138b4cf3595da69e08051449dda327ec9ce353a5"
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
