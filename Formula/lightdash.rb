class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2366.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2366.0/lightdash-cli-0.2366.0-macos-arm64.tar.gz"
      sha256 "0d8f0335371ad78b57aba418111a706f38216fde4748f69ccf0ebc7f92329e6c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2366.0/lightdash-cli-0.2366.0-macos-x64.tar.gz"
      sha256 "c189875df8a5046a69dded88e9721c487ef3d231e63fa7ca5ccef9d6914c0990"
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
