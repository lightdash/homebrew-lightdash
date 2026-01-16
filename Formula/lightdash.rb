class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2344.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2344.0/lightdash-cli-0.2344.0-macos-arm64.tar.gz"
      sha256 "f4338908872f0c6f5d27ea3a0fcbaf61074ce1ad0908f7604975c59bf52397ce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2344.0/lightdash-cli-0.2344.0-macos-x64.tar.gz"
      sha256 "7b43ebad2ef48069c39c05fd5e022b3e9bb8a3d32ee50e3c681e5e6d92f03d07"
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
