class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3466.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3466.0/lightdash-cli-0.3466.0-macos-arm64.tar.gz"
      sha256 "7aa585c012fc8cb41fc35806736702ee254742a1ddee7174d08446f77f054b21"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3466.0/lightdash-cli-0.3466.0-macos-x64.tar.gz"
      sha256 "eb2d32ff12e709d6660af441742b9ef3643b83c88957363ba2caec1b03049fee"
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
