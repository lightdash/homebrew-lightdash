class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.160.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.160.2/lightdash-cli-1.160.2-macos-arm64.tar.gz"
      sha256 "3d6dd6c5074c98cd1b9b8b03957301c8bc84a37765cdf8bd3e8d2a298c32a6e9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.160.2/lightdash-cli-1.160.2-macos-x64.tar.gz"
      sha256 "ca6ff24943c236fbbbeb24554aa1c984446145012129d8c56fe3246da6716062"
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
