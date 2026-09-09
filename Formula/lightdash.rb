class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.173.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.173.1/lightdash-cli-2.173.1-macos-arm64.tar.gz"
      sha256 "5ba7364b93e0fa0c0e5c0bd8c2549bb47672419129fc79ded8a95f36e3c31cac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.173.1/lightdash-cli-2.173.1-macos-x64.tar.gz"
      sha256 "f1e1aa779a7f33f84aec430d18af46b700ff74c93d688cf5c7a14d78356cdb4c"
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
