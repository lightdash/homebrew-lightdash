class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3387.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3387.0/lightdash-cli-0.3387.0-macos-arm64.tar.gz"
      sha256 "10af1792eab36d3b3260bb926090b146535982d352b1282eecf4727ae0c7feeb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3387.0/lightdash-cli-0.3387.0-macos-x64.tar.gz"
      sha256 "bb39cd2bd36e6974d7549363952eb1404572d4bbf12b2fd8c35b76d53dd1d872"
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
