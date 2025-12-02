class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2218.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2218.1/lightdash-cli-0.2218.1-macos-arm64.tar.gz"
      sha256 "be9ad93ee7178f9a02c8b3e24eed5622946951d16449917b5bd47259abdf2b05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2218.1/lightdash-cli-0.2218.1-macos-x64.tar.gz"
      sha256 "047e0e7bf9f10a7c80e248e2282d164844b0fb11a42184e7e4376665bb4acc39"
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
