class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2335.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2335.0/lightdash-cli-0.2335.0-macos-arm64.tar.gz"
      sha256 "f866b7d8bffebaf17792f882d40f9a9f4f7c106e9ce4b32f5746ab92e9e23b45"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2335.0/lightdash-cli-0.2335.0-macos-x64.tar.gz"
      sha256 "09ce54735d7863e836a8c0905ea3a167e8e385145781479c1aeb83e4d173f9fb"
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
