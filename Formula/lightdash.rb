class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.162.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.162.3/lightdash-cli-1.162.3-macos-arm64.tar.gz"
      sha256 "d8a4c7c169056cb33310667f1fb989e895922e092d2bfb04baaed41ac43e7e39"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.162.3/lightdash-cli-1.162.3-macos-x64.tar.gz"
      sha256 "4899741989d5f303161a7a356f86fd19a8c74e41716caa80813fc3cceab197e7"
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
