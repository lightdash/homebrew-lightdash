class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2919.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2919.2/lightdash-cli-0.2919.2-macos-arm64.tar.gz"
      sha256 "ef44de94eebf24beeff3b84d30b4dd62b91539ebce93d5d725dc07e988ba8125"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2919.2/lightdash-cli-0.2919.2-macos-x64.tar.gz"
      sha256 "d0051c0ca1f16f9d96d48d595e10efc2eb12e00e3487f8fc3bc1c1b15f6468bd"
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
