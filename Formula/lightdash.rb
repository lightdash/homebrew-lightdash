class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2542.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2542.0/lightdash-cli-0.2542.0-macos-arm64.tar.gz"
      sha256 "92f6ab22f34a443810da334ef2137baf1d80c6e69272c6419b1eeca9b1c7abbc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2542.0/lightdash-cli-0.2542.0-macos-x64.tar.gz"
      sha256 "0cbeab1746fbde7b1f94bfa176c98551f9a2c45d1ff7f5febb3720898ab68617"
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
