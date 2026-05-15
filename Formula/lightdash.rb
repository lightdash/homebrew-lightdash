class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2955.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2955.2/lightdash-cli-0.2955.2-macos-arm64.tar.gz"
      sha256 "4741fd75123b9cba55819b803db61cd7df4aac8b3064892dbbbec6ce7be98de6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2955.2/lightdash-cli-0.2955.2-macos-x64.tar.gz"
      sha256 "a873cd7ee0da9df4b4c1692a94edb79caffd82443398b5e61c29511afb672f4c"
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
