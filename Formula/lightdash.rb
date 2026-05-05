class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2865.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2865.3/lightdash-cli-0.2865.3-macos-arm64.tar.gz"
      sha256 "364a195155975b3aec0f4988d4be1a03969c6b7a38dd0ff973995d9307be4294"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2865.3/lightdash-cli-0.2865.3-macos-x64.tar.gz"
      sha256 "d4e2b6adeb456d0f0fc6ddd3322fffe587de0c52c6305b69132546f0fd420b27"
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
