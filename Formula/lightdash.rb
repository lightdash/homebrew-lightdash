class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2213.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2213.2/lightdash-cli-0.2213.2-macos-arm64.tar.gz"
      sha256 "ba8854a65ef0d7ad3a8892fd8e452694cd0084ec911023d5b7088d3e5b7c127a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2213.2/lightdash-cli-0.2213.2-macos-x64.tar.gz"
      sha256 "b0e30f8baf9820564e47b798163ce58153ab929692b103e27a056466f50e4022"
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
