class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.405.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.0/lightdash-cli-2.405.0-macos-arm64.tar.gz"
      sha256 "8caba0bf28d6d53114b4b8731b70a3ba535a0cc2fc935978113735c95892a84a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.0/lightdash-cli-2.405.0-macos-x64.tar.gz"
      sha256 "55699c9301c9896dad330c2a339f8a59997813e220f274b5033a9adff918a506"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.405.0/lightdash-cli-2.405.0-linux-x64.tar.gz"
    sha256 "cd305e11f155f1ec0518dbde2dc6c5db8913b94075ffd575f37d253a8aef3286"

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
