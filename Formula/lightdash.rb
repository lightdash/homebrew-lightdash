class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2737.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2737.0/lightdash-cli-0.2737.0-macos-arm64.tar.gz"
      sha256 "ed176b783358666e5d545aa5a4cc8618539d72adda7693e41926c864c68556c4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2737.0/lightdash-cli-0.2737.0-macos-x64.tar.gz"
      sha256 "0d7c65c645d30495c64e50b16134e08dee6927cbd221b58db815903803b3ab50"
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
