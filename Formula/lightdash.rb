class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.166.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.166.1/lightdash-cli-3.166.1-macos-arm64.tar.gz"
      sha256 "f9f55e242f018dd4c785fcef2d2458bc64eb03010e198063469cfbf815ae7e28"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.166.1/lightdash-cli-3.166.1-macos-x64.tar.gz"
      sha256 "c12ac2136d76a52a4c6d4d6d35ea9db607dde8ed953598582d01ac0572a74352"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.166.1/lightdash-cli-3.166.1-linux-x64.tar.gz"
    sha256 "74bc3ce66c7ed2f210e4896a1cccaddba81930840233aa58615304a28835c908"

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
