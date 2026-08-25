class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.257.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.257.1/lightdash-cli-1.257.1-macos-arm64.tar.gz"
      sha256 "8048d33ef279693d79d582fc24a50ae57f4102e57885b9727894eadabb218bb6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.257.1/lightdash-cli-1.257.1-macos-x64.tar.gz"
      sha256 "90565eab16b8a435e51d754ad5f29f2e5cb4e8b2a3c7916f8b0d91fe9e241c52"
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
