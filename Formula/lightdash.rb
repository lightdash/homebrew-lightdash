class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2890.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2890.1/lightdash-cli-0.2890.1-macos-arm64.tar.gz"
      sha256 "404a128a4315847ea15c65b8a796a8acaa06cad0bacf5033eeb7c01b375c1b1d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2890.1/lightdash-cli-0.2890.1-macos-x64.tar.gz"
      sha256 "a8422a6f056c5ce5bd988afa4ed7d6d27ebb92dc6ba1385a3fb0e10f41d25bf2"
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
