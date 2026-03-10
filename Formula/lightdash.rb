class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2592.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2592.0/lightdash-cli-0.2592.0-macos-arm64.tar.gz"
      sha256 "39ff7c499878ae07c24b6ded5dad04c5da8fa8f5e5914069f7fc19da406463b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2592.0/lightdash-cli-0.2592.0-macos-x64.tar.gz"
      sha256 "a2cd6c9fcd5fae0665f43a0eeb5f537471f34417a93810d2b9d2ef80f154b438"
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
