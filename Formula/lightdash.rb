class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.589.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.589.1/lightdash-cli-2.589.1-macos-arm64.tar.gz"
      sha256 "41aa9090b37b2ec0517e86f70da30ea585a67faf72b25acc1aac25ce2b0ae987"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.589.1/lightdash-cli-2.589.1-macos-x64.tar.gz"
      sha256 "5e8baf05cc95556ed97c2d126b77e3e755f7004438b18c753b7296c4423f833a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.589.1/lightdash-cli-2.589.1-linux-x64.tar.gz"
    sha256 "965e3a20de8896bf7d06d6b98851d80b77bc8c827da18ed35adab1b61b3e5f09"

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
