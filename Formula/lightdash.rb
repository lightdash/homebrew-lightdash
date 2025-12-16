class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2257.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2257.1/lightdash-cli-0.2257.1-macos-arm64.tar.gz"
      sha256 "365d12c6ef64ccf83b3672e76a250a3cfbaa20a1d93608372490c19f16b56a6a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2257.1/lightdash-cli-0.2257.1-macos-x64.tar.gz"
      sha256 "da00c29033e6d178098612291218959fbc8b65dca9276413edb51af8273ffa85"
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
