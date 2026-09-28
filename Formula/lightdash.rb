class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.350.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.350.0/lightdash-cli-2.350.0-macos-arm64.tar.gz"
      sha256 "7bb6ab23b8671c597e27d284087cbda518b4a8d32cd5e23ffee0743dee7c9926"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.350.0/lightdash-cli-2.350.0-macos-x64.tar.gz"
      sha256 "1cc113e6b73df01eccdf456ee356fd4ee071e24ed1f05371003d6dcae4a1134b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.350.0/lightdash-cli-2.350.0-linux-x64.tar.gz"
    sha256 "1d605ee6589eb29c84dba95ce95af539d9818d7fc1efddf1b5a537be0f25b608"

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
