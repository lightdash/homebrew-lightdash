class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.209.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.209.0/lightdash-cli-1.209.0-macos-arm64.tar.gz"
      sha256 "1f210477a6a9ccbfe92ae1534f02c130d43eda429769dfb991ba178b035d8651"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.209.0/lightdash-cli-1.209.0-macos-x64.tar.gz"
      sha256 "91d5b774988fc7c358d29b24da04614d8bef05283d9929bd94a26fd58190a51e"
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
