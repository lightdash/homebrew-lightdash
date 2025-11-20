class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2193.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2193.0/lightdash-cli-0.2193.0-macos-arm64.tar.gz"
      sha256 "f358521ef7c14df9badeffa076ae7beee83395a1094971b8a715c1b27c1c810b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2193.0/lightdash-cli-0.2193.0-macos-x64.tar.gz"
      sha256 "89ea8babc4dd0f114ec69f85e9546c0f30d354f425be3625625bfad628a7546a"
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
