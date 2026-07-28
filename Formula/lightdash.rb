class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.8.0/lightdash-cli-1.8.0-macos-arm64.tar.gz"
      sha256 "6aa624ba05f4ee456d08f2bfc901f1c782a8913bfb64bef35dd15117769cd2e9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.8.0/lightdash-cli-1.8.0-macos-x64.tar.gz"
      sha256 "463722533ae3fb00453121ab897839b2bf92ac8cfd7c52d29b28b7fcca5e8c30"
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
