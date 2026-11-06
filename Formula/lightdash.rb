class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.178.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.178.0/lightdash-cli-3.178.0-macos-arm64.tar.gz"
      sha256 "5bb24451dbd3d707080e28f1c7928139e1a0b113870f8a7835b9db2a7bd491bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.178.0/lightdash-cli-3.178.0-macos-x64.tar.gz"
      sha256 "6299988a4679f95dd4e5d9c984e9c8486925f2037d5a447c51cdb80d664395eb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.178.0/lightdash-cli-3.178.0-linux-x64.tar.gz"
    sha256 "88c7cafe099689f65843f62453264ebafb844e22fe24a2cafba99de49dd81829"

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
