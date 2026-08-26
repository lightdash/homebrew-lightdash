class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.12.0/lightdash-cli-2.12.0-macos-arm64.tar.gz"
      sha256 "9d718c3c298e2f936bb038f10d0bb1858397ca36bfa78ba0dfabb11b95cc3978"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.12.0/lightdash-cli-2.12.0-macos-x64.tar.gz"
      sha256 "39ae6420a23f20ce12687cf41ebaa909322d2f24d8aeeca9f45ed67f2c9ad438"
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
