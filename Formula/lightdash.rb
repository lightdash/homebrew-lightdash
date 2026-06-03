class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3082.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3082.0/lightdash-cli-0.3082.0-macos-arm64.tar.gz"
      sha256 "72e0e4891402a0b028e2d26838f4ce4436f4192d0d64368ca932dcc23530573d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3082.0/lightdash-cli-0.3082.0-macos-x64.tar.gz"
      sha256 "cf6fb4413cba6ecf59d823f6557bb8d14b49b4806501981de2c0e2491bad1c7d"
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
