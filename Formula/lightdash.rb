class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3409.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3409.0/lightdash-cli-0.3409.0-macos-arm64.tar.gz"
      sha256 "200b16d666c1ce436582853b8de0b6c0ad3efef026fecdc1116aedbc03ce3483"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3409.0/lightdash-cli-0.3409.0-macos-x64.tar.gz"
      sha256 "7f37520b4af8163e3789c4b3b4ed45b2c30e35891aed54c389ecb507d38a2576"
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
