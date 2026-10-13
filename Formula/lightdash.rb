class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.576.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.576.1/lightdash-cli-2.576.1-macos-arm64.tar.gz"
      sha256 "f0ed950392697d85e27aab70e2c806e59e3336d28791c39c4e30025c3295bb74"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.576.1/lightdash-cli-2.576.1-macos-x64.tar.gz"
      sha256 "3da773fb46487cf142622a8a77b81a70be6355f5e1108687f21ea4597870ee7e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.576.1/lightdash-cli-2.576.1-linux-x64.tar.gz"
    sha256 "d4d476dde2f87a819a2dadf7559e9e15b33faf32a0e4cb0e6dc8f75b61a8ae1e"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
