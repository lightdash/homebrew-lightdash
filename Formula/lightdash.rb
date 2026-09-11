class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.198.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.198.3/lightdash-cli-2.198.3-macos-arm64.tar.gz"
      sha256 "50e50267b89da5b389d41f1059b1c195a040aa36022841af7dba99d52cb13e2c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.198.3/lightdash-cli-2.198.3-macos-x64.tar.gz"
      sha256 "985b611a57904eec18d79821358fbd6589dea87ab02d7aa95b0d80a9148bd04c"
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
