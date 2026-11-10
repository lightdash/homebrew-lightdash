class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.197.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.197.0/lightdash-cli-3.197.0-macos-arm64.tar.gz"
      sha256 "87456bbaab9770c273ac5c9a53d072cde42d068ff4376c171740108e8da649ea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.197.0/lightdash-cli-3.197.0-macos-x64.tar.gz"
      sha256 "0d8bf9f89713106eb9e97bb105bf0234eaa0aaa011e2338b0ac3dfe5eb96c60a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.197.0/lightdash-cli-3.197.0-linux-x64.tar.gz"
    sha256 "2f677c7ed7bbe7df3f260348c41358e783f35f078a3b78e4775e056634d9c589"

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
