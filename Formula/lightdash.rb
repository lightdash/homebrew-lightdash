class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.133.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.133.1/lightdash-cli-3.133.1-macos-arm64.tar.gz"
      sha256 "5add65d41e618bea739e96849de20f7d183234c9c1e11c6d8d64d8953f4a0426"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.133.1/lightdash-cli-3.133.1-macos-x64.tar.gz"
      sha256 "e2f48f3d247a2dd445759d781489e1d4358c6b5cc5a89735525d28a7d092c567"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.133.1/lightdash-cli-3.133.1-linux-x64.tar.gz"
    sha256 "70fe346537f1946706c9dde63136ec15a21d0acd94b95c102883f502d375fda3"

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
